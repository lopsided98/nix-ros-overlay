
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, libyamlcpp, maliput, maliput-drake }:
buildRosPackage {
  pname = "ros-foxy-maliput-multilane";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_multilane-release/archive/release/foxy/maliput_multilane/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "c32b0a584b776961c91aead3b391fb881119468b40e01fea63601c4f6609efe3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt libyamlcpp maliput maliput-drake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Multilane.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
