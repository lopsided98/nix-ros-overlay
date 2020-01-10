
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, pcre, poco, zlib }:
buildRosPackage {
  pname = "ros-crystal-poco-vendor";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/poco_vendor-release/archive/release/crystal/poco_vendor/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "81e48bbd06ea2658b572efa9e854fb233b6e02f7559ef0ab27ff7d93da0a8e1b";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake pcre poco zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the poco library.'';
    license = with lib.licenses; [ asl20 boost ];
  };
}
