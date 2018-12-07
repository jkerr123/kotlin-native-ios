import React, { Component } from 'react';
import { Container, Header, Left, Body, Right, Title } from 'native-base';
import {AppRegistry, StyleSheet} from "react-native";
export default class MyHeader extends Component {
    render() {
        return (
            <Container>
                <Header>
                    <Left/>
                    <Body>
                    <Title style={styles.headerTitle}>iZettle Stock</Title>
                    </Body>
                    <Right />
                </Header>
            </Container>
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
    headerTitle: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
        color: "#283663"
    },
    scores: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
});

AppRegistry.registerComponent('MyHeader', () => MyHeader);