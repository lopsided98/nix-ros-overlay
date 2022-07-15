
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, libyamlcpp, maliput, maliput-drake }:
buildRosPackage {
  pname = "ros-foxy-maliput-multilane";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_multilane-release/archive/release/foxy/maliput_multilane/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "bbb58467ea2752e8ddea5494fdc03fef593e0327761740cbc9971bce1d5081f7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt libyamlcpp maliput maliput-drake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Multilane.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
