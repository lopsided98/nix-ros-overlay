
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rmf-workcell-msgs";
  version = "3.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/jazzy/rmf_workcell_msgs/3.2.1-3.tar.gz";
    name = "3.2.1-3.tar.gz";
    sha256 = "46427cacea2f421492db46f7e7a6ef94238a7aa6b506f5de51d26877b26b2bfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used by all workcells generically to interfact with rmf_core";
    license = with lib.licenses; [ asl20 ];
  };
}
