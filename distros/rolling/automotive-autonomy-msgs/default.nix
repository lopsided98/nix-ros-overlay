
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-automotive-autonomy-msgs";
  version = "3.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/rolling/automotive_autonomy_msgs/3.0.4-4.tar.gz";
    name = "3.0.4-4.tar.gz";
    sha256 = "70b320713a169696b27500324dd22cc4d4a2273d7aea553022d383065c34cfd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
