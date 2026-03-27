
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-sample-interfaces";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_sample_interfaces/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "367212f9446803f01b99189cea4368c3d8b2e6f1f6b1f0b2c30e48880f5b248c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Sample interfaces for the Agnocast sample application.";
    license = with lib.licenses; [ asl20 ];
  };
}
