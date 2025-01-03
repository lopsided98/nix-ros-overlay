
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-r2r-spl-test-interfaces";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/r2r_spl_test_interfaces/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4faebd5a4cbce074c7da7b520bd240de1942a9cb605df6047e4351ee132fb3e8";
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
