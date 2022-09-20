
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, csm, geometry-msgs, nav-msgs, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-matcher";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/laser_scan_matcher/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "6000f160af9d500dc98962fe003cc963573abbcec0bc7d7a0b6092896c49d285";
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
