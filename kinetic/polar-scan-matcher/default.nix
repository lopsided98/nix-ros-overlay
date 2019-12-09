
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, catkin, tf, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-polar-scan-matcher";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/polar_scan_matcher/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "6867ba977e0f86416a88c4c1df098441f1e29f023496265f3caf5b40d33e16ef";
  };

  buildType = "catkin";
  buildInputs = [ tf sensor-msgs geometry-msgs roscpp ];
  propagatedBuildInputs = [ tf sensor-msgs geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
    A wrapper around Polar Scan Matcher by Albert Diosi and Lindsay Kleeman, used for laser scan registration.
    </p>'';
    license = with lib.licenses; [ gpl1 ];
  };
}
