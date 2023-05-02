
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources";
  version = "2.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources/2.0.6-2.tar.gz";
    name = "2.0.6-2.tar.gz";
    sha256 = "f6b1f701a82bb72bce6f8d9896a58694db2171f8531df178e750e8714ec2a8e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-resources-pr2-description robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
