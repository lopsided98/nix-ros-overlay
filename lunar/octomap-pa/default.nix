
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, pcl, sensor-msgs, catkin, roscpp, octomap-msgs, laser-geometry, nav-msgs, message-generation, octomap-ros, message-runtime, pcl-ros, std-msgs, parameter-pa, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-octomap-pa";
  version = "1.3.3";

  src = fetchurl {
    url = https://github.com/TUC-ProAut/ros_octomap-release/archive/release/lunar/octomap_pa/1.3.3-0.tar.gz;
    sha256 = "c5b4de04a36e2d2165bf094fbe3c9b9f02054631ff0d38a88f6c959e0f598f10";
  };

  buildInputs = [ std-srvs pcl parameter-pa sensor-msgs roscpp octomap-msgs laser-geometry nav-msgs message-generation octomap-ros pcl-ros std-msgs tf pcl-conversions geometry-msgs ];
  propagatedBuildInputs = [ std-srvs pcl parameter-pa sensor-msgs roscpp octomap-msgs laser-geometry nav-msgs octomap-ros message-runtime pcl-ros std-msgs tf pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut octomap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
