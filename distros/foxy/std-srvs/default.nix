
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-std-srvs";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/foxy/std_srvs/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "6b4d11dee1b8698c622172cf981fa7441a70ed6ec330c1590d476d224803528a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some standard service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
