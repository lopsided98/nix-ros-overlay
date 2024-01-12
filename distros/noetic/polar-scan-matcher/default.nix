
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-polar-scan-matcher";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/polar_scan_matcher/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "bcc36faf9baa266ac3f9d80713b08ec51539f589e6e26aa5e2e4ce1fd384702a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
    A wrapper around Polar Scan Matcher by Albert Diosi and Lindsay Kleeman, used for laser scan registration.
    </p>'';
    license = with lib.licenses; [ "GPL" ];
  };
}
