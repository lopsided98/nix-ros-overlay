
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, linuxHeaders, console-bridge, rosunit }:
buildRosPackage {
  pname = "ros-melodic-socketcan-interface";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_interface/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "e59e02fb68b878c51ee9adbad6008109f85495608d31fd2a139a2dcfef55e572";
  };

  buildType = "catkin";
  buildInputs = [ linuxHeaders class-loader console-bridge boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ linuxHeaders class-loader console-bridge boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
