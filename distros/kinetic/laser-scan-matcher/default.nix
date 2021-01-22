
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, csm, geometry-msgs, nav-msgs, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-laser-scan-matcher";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_scan_matcher/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "cbeb10975db44f053f24aad7539ee0fe890f00f50602fd9f659c27cdaf246a48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ csm geometry-msgs nav-msgs nodelet pcl pcl-conversions pcl-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     An incremental laser scan matcher, using Andrea Censi's Canonical Scan Matcher (CSM) implementation. See <a href="http://censi.mit.edu/software/csm/">the web site</a> for more about CSM. NOTE the CSM library is licensed under the GNU Lesser General Public License v3, whereas the rest of the code is released under the BSD license.
    </p>'';
    license = with lib.licenses; [ bsdOriginal lgpl2 ];
  };
}
