
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-std-srvs";
  version = "5.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/std_srvs/5.10.3-1.tar.gz";
    name = "5.10.3-1.tar.gz";
    sha256 = "bac322595164991d849d74d9d21cdc71f258b90de8a1ea085ed4a2f6f698f5d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some standard service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
