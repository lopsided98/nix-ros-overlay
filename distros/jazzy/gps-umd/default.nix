
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-jazzy-gps-umd";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/jazzy/gps_umd/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "4e621242042d5180c647bd4ddb6f614a01b8aa7e8bb5628d17dd8217423b8faf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gps_umd metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
