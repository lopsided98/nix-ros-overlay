
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rmw-cyclonedds-cpp, ros2cli, wireguard-tools }:
buildRosPackage {
  pname = "ros-humble-fogros2";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fogros2-release/archive/release/humble/fogros2/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "c6f46647d20ce31a0745eb585811fc3cc5b04df97ad94554d63f2498f2994789";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.boto3 python3Packages.paramiko python3Packages.scp rmw-cyclonedds-cpp ros2cli wireguard-tools ];

  meta = {
    description = ''A ROS 2 extension for the cloud deployment of computational graphs in a cloud-provider
    agnostic and security-conscious manner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
