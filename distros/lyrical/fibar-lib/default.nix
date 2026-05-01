
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, gtest }:
buildRosPackage {
  pname = "ros-lyrical-fibar-lib";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fibar_lib-release/archive/release/lyrical/fibar_lib/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "ab93e1c8cc27ef9691e689e7cf83d4c33fc570da3e1ae94debc18256f36271b9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ clang ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "FIBAR event image reconstruction library";
    license = with lib.licenses; [ asl20 ];
  };
}
