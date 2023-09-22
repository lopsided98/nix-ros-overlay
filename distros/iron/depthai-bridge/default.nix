
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, camera-info-manager, composition-interfaces, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-iron-depthai-bridge";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_bridge/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "3da6da84d0a56963b1425e6ea3bae1b61ee43acc2087568f006cb15c68098780";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost camera-info-manager composition-interfaces cv-bridge depthai depthai-ros-msgs image-transport opencv rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
