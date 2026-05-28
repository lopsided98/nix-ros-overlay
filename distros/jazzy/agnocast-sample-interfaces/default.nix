
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-sample-interfaces";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_sample_interfaces/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "0ef7f4155cec99bd930bfa0cbf991852495812d1fb01028b88f0d1a0bee3b5ea";
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
