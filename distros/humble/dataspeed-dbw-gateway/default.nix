
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, dataspeed-dbw-common, dataspeed-dbw-msgs, dbw-fca-msgs, dbw-ford-msgs, dbw-polaris-msgs, diagnostic-msgs, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-dbw-gateway";
  version = "2.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DataspeedInc-release";
        repo = "dbw_ros-release";
        rev = "release/humble/dataspeed_dbw_gateway/2.1.1-1";
        sha256 = "sha256-Cud1x56Ln+i8WxrBiH7iiQcCBuLKqqolPlYBwNTIRAI=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ dataspeed-dbw-common dataspeed-dbw-msgs dbw-fca-msgs dbw-ford-msgs dbw-polaris-msgs diagnostic-msgs rclcpp rclcpp-components ros-environment rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A multiplexer and demultiplexer between common dbw messages and platform specific dbw messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
