
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rmw-cyclonedds-cpp, ros2cli, wireguard-tools }:
buildRosPackage {
  pname = "ros-humble-fogros2";
  version = "0.1.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "fogros2-release";
        rev = "release/humble/fogros2/0.1.7-1";
        sha256 = "sha256-8WRsRqu8vU//YKjO6e6Rp8jC8DfGUddnsr4Gj8wAqeA=";
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
