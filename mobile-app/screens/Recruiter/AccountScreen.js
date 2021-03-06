import * as React from 'react';
import { StyleSheet, Button, View, Text } from 'react-native';

function AccountScreen({ navigation }) {
  return (
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
      <Text>Recruiter Account</Text>
      <View style={{ flexDirection: "row", justifyContent: 'space-between' }}>
        <Button
          style={{ marginRight: '10%' }}
          title="All applications"
          onPress={() => navigation.navigate('RecruiterApplicationList')}
        />

        <Button
          title="Pending application"
          onPress={() => navigation.navigate('RecruiterPendingApplicationList')}
        />

        <Button
          title="Add offer"
          onPress={() => navigation.navigate('OfferForm')}
        />
      </View>
    </View>
  );
}

export default AccountScreen;
