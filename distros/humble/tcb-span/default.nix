
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-humble-tcb-span";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/tcb_span/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "4006169b3a8c62d99150568aa3b4a29d9267349378bf4117dffd2c66ea4c331e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of C++20's std::span'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
