
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-vda5050-serializer";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/galactic/vda5050_serializer/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "b10aec3a285e3297c141aa0b9a1eba13fab7776d891e5cd7cc3c056c745565d7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The serialization/deserialization functions to be loaded into the mqtt_bridge. During (de-)serialization
    the case of the keys is corrected from snake_case on ROS side to dromedaryCase on MQTT/JSON side'';
    license = with lib.licenses; [ asl20 ];
  };
}
