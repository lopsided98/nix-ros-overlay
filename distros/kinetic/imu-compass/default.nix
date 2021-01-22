
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-imu-compass";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/imu_compass-release/archive/release/kinetic/imu_compass/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "6cc348641406c6549ccc7e1311e7f53f1dd7e91790f588c081ef43eb199e915a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.scipy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node to combine IMU data (accelerometers and gyroscopes) with Compass data (magnetometers) for a cleaner reading of a Vehicles Heading'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
