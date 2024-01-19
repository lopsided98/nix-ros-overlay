
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-ament-download";
  version = "0.0.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_download-release/archive/release/iron/ament_download/0.0.5-5.tar.gz";
    name = "0.0.5-5.tar.gz";
    sha256 = "424c46fb1227665a3987cc667195ab326fd9ff9236ca61adc30526ecdb4a5c8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
