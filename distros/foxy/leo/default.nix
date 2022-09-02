
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-foxy-leo";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/foxy/leo/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "264b22427c0218bfe9af26a03ef5c585a457e6b58d3f30ffa03533a3d0731b45";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
