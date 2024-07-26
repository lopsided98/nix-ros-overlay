
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tf2-msgs";
  version = "0.36.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_msgs/0.36.4-1.tar.gz";
    name = "0.36.4-1.tar.gz";
    sha256 = "0e4eaab4ac2079ce28b953ece2f8710b41908b075fb43af966d1e756596fc9aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "tf2_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
