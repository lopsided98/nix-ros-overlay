
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, flex, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-popf";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/popf-release/archive/release/eloquent/popf/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "fb5468df295b1e382df2f855ea30f9b5b750ff11f04af6671a0bf306cabac447";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ bison flex rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The POPF package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
