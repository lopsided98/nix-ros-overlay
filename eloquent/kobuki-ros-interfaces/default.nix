
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-ros-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_ros_interfaces-release/archive/release/eloquent/kobuki_ros_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "80dba437b5fdeff1b8f83cba1ffe0f05ddb98720c0847c7fb1005102bba80e75";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
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
