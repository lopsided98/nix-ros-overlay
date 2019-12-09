
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, cmake, zlib, pcre }:
buildRosPackage {
  pname = "ros-dashing-poco-vendor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/poco_vendor-release/archive/release/dashing/poco_vendor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ac61c044b172c2cd144fb22df5a466afefff5b980abfb5e245de67b24d867ed9";
  };

  buildType = "cmake";
  buildInputs = [ poco zlib pcre ];
  propagatedBuildInputs = [ poco cmake zlib pcre ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the poco library.'';
    license = with lib.licenses; [ asl20 boost ];
  };
}
