
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, csm, geometry-msgs, nav-msgs, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-matcher";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/laser_scan_matcher/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "00b14d69b87fb6da8dbfd290beddf7c8f2b92adcce22fed066a5883adfe825c4";
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
