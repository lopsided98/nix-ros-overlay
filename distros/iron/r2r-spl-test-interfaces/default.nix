
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-r2r-spl-test-interfaces";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/r2r_spl_test_interfaces/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e2b3f75a75d597cb12917f8954bf2a53b84cc07f1b9c3e676e1fca0c2dfdeec2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for testing r2r_spl";
    license = with lib.licenses; [ asl20 ];
  };
}
