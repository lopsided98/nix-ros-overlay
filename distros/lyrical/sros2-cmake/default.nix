
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-lyrical-sros2-cmake";
  version = "0.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/lyrical/sros2_cmake/0.16.6-1.tar.gz";
    name = "0.16.6-1.tar.gz";
    sha256 = "57e766bd3ceff1ec0ccd33be5a1d0ddae9ad1914dfd191769e8690594b1fd099";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros to configure security";
    license = with lib.licenses; [ asl20 ];
  };
}
