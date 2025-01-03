
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-axis-msgs";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/humble/axis_msgs/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "f19d10a439d7d3acf999ad66b94f8dc3e822bd6368fd79033e9af5aa299bd42f";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages used by the axis_camera package to control Axis PTZ and fixed cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
