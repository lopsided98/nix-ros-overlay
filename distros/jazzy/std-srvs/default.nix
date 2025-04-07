
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-std-srvs";
  version = "5.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/jazzy/std_srvs/5.3.6-1.tar.gz";
    name = "5.3.6-1.tar.gz";
    sha256 = "961b36de7be584ae91d094150dcabca7b03df428e36c4ca62ea14d3fb7648ae1";
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
