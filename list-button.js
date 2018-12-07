import React from 'react';
import {AppRegistry, StyleSheet, Text, View} from 'react-native';
import {Card, CardItem, Content} from "native-base";

export class ListButton extends React.Component {
    render() {

        return (
            <View>
                <Content padder>
                    <Card>
                        <CardItem header button onPress={() => alert("This is Card Header")}>
                            <Text>NativeBase</Text>
                        </CardItem>
                    </Card>
                </Content>
            </View>
        );
    }
}


// Module name
AppRegistry.registerComponent('ListButton', () => ListButton);