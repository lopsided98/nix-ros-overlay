
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-urg-c";
  version = "1.0.4001-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/rolling/urg_c/1.0.4001-3.tar.gz";
    name = "1.0.4001-3.tar.gz";
    sha256 = "26741360e399f73202bac31bacd0ee0f2b9ac531c22ee1c8eed8a8c528efe4b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
