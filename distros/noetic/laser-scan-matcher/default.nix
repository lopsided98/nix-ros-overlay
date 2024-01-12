
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, csm, geometry-msgs, nav-msgs, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-matcher";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/laser_scan_matcher/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "7948ef3e15cc0d298317ca9067983fedbe5881517b87cc81649d4f45a0d3dabc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ csm geometry-msgs nav-msgs nodelet pcl pcl-conversions pcl-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     An incremental laser scan matcher, using Andrea Censi's Canonical Scan Matcher (CSM) implementation. See <a href="http://censi.mit.edu/software/csm/">the web site</a> for more about CSM. NOTE the CSM library is licensed under the GNU Lesser General Public License v3, whereas the rest of the code is released under the BSD license.
    </p>'';
    license = with lib.licenses; [ bsdOriginal lgpl3Only ];
  };
}
