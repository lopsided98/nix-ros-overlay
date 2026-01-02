
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-kilted-leo";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/kilted/leo/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "cd045c9a397e9fadf2254feeb1f46cda42081f4d77edde0e7f18c9a8ac7e16e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software for Leo Rover common to the robot and ROS desktop";
    license = with lib.licenses; [ mit ];
  };
}
