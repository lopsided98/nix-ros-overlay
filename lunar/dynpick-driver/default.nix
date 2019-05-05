
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, pythonPackages, roscpp, rostest, rviz, robot-state-publisher, tf, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-dynpick-driver";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/tork-a/dynpick_driver-release/archive/release/lunar/dynpick_driver/0.2.0-0.tar.gz;
    sha256 = "f590b02b58b7fdeb10f8bb540f214193393d077ee3c650c3acc6f72db5ed0ccf";
  };

  buildInputs = [ std-srvs pythonPackages.catkin-pkg roscpp geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs tf rviz robot-state-publisher roscpp xacro geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for Wacohtech dynpick force sensor. This contains <a href="http://ros.org/">ROS</a>-compatible linux driver, as well as a communication test tool.<br/>
  As of Oct 2016, it's tested with the following models of dynpick:
  <ul>
    <li><a href="http://www.wacoh-tech.com/products/dynpick/wdf-6m200-3.html">wdf-6m200-3</a></li>
    <li><a href="http://www.wacoh-tech.com/en/products/dynpick/200n.html">WEF-6A200</a> (confirmed <a href="https://github.com/tork-a/dynpick_driver/pull/35#issuecomment-256031851">here</a>)</li>
  </ul>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
