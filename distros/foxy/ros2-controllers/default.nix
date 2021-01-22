
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diff-drive-controller, effort-controllers, forward-command-controller, joint-state-controller, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-foxy-ros2-controllers";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/ros2_controllers/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "0ff0eb27c39e2521778537db5ccb0030bec933f06da50b4adc6a3304de3f8ad4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diff-drive-controller effort-controllers forward-command-controller joint-state-controller joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
