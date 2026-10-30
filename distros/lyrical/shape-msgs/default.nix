
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-shape-msgs";
  version = "5.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/lyrical/shape_msgs/5.9.4-1.tar.gz";
    name = "5.9.4-1.tar.gz";
    sha256 = "1be4c4e204de8ba7d7feb3e89d83c3928c0c87209f485619b02837b6bca45f7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some message definitions which describe geometric shapes.";
    license = with lib.licenses; [ asl20 ];
  };
}
