
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-polar-scan-matcher";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/polar_scan_matcher/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "6867ba977e0f86416a88c4c1df098441f1e29f023496265f3caf5b40d33e16ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
    A wrapper around Polar Scan Matcher by Albert Diosi and Lindsay Kleeman, used for laser scan registration.
    </p>'';
    license = with lib.licenses; [ gpl1 ];
  };
}
