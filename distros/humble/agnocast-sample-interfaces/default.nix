
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-agnocast-sample-interfaces";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_sample_interfaces/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "e33dfa448f546d764e9eae73adacab737944375b5df17580ca468df5660b9385";
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
