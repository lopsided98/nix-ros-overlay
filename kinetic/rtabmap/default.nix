
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite, pcl, libg2o, cv-bridge, freenect, proj, qt-gui-cpp, octomap, vtkWithQt4, zlib, cmake }:
buildRosPackage {
  pname = "ros-kinetic-rtabmap";
  version = "0.17.6";

  src = fetchurl {
    url = https://github.com/introlab/rtabmap-release/archive/release/kinetic/rtabmap/0.17.6-0.tar.gz;
    sha256 = "79b17d7877175944afd725601adbc0ff50e66345bbf06156c37ee2cbca237d40";
  };

  buildInputs = [ sqlite libg2o pcl cv-bridge freenect proj qt-gui-cpp octomap vtkWithQt4 zlib ];
  propagatedBuildInputs = [ sqlite libg2o pcl cv-bridge freenect qt-gui-cpp octomap vtkWithQt4 zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
