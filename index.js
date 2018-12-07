import React from 'react';
import {AppRegistry, Alert, Button, StyleSheet, Text, View, NativeModules} from 'react-native';

class RNHighScores extends React.Component {

    _onPress() {
        Alert.alert("PRESSED!");
        NativeModules.SomeSwift.myMethod();

    }

    render() {
        var contents = this.props['scores'].map((score) => (
            <Text key={score.name}>
                {score.name}:{score.value}
                {'\n'}
            </Text>
        ));
        return (
            <View style={styles.container}>
                <Button
                    onPress={() => {
                        this._onPress()
                    }}
                    title="Press Me"
                />
                <Text style={styles.highScoresTitle}>2222 High Scores!</Text>
                <Text style={styles.scores}>{contents}</Text>
            </View>
        );
    }
}


const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#FFFFFF',
    },
    highScoresTitle: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    },
    scores: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
});

// Module name
AppRegistry.registerComponent('RNHighScores', () => RNHighScores);