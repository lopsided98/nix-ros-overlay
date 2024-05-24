
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tf2-msgs";
  version = "0.36.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_msgs/0.36.3-1.tar.gz";
    name = "0.36.3-1.tar.gz";
    sha256 = "2362a25e97148d06ad3cef6a5b33a33431c1f8db0869fbec054ff2e53cdfaeab";
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
