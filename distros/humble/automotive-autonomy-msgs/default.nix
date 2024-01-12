
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-humble-automotive-autonomy-msgs";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/humble/automotive_autonomy_msgs/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "a8e239376c418f9ebd6372855bac4c168e3ebe93b3159f532071f83e8c0273b6";
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
