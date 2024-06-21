
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-rcdiscover";
  version = "1.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/jazzy/rcdiscover/1.1.7-2.tar.gz";
    name = "1.1.7-2.tar.gz";
    sha256 = "9100a08246bb764f3ae0464274976cdf828da1460bda58948040200ee83724e9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
