
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-kobuki-ros-interfaces";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/rolling/kobuki_ros_interfaces/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "0b78f44211880401b7b55b6078e2953e804944d8e0dbe45b7ab25c2e5382d490";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      ROS2 message, service and action interfaces for the Kobuki.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
