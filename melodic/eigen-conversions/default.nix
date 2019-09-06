
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, catkin, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-eigen-conversions";
  version = "1.12.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/eigen_conversions/1.12.0-0.tar.gz";
    name = "1.12.0-0.tar.gz";
    sha256 = "6485f64dd54db8430e4aacfa15b0d09b575aff8cfcf4ad24f946e090004521ad";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs orocos-kdl geometry-msgs eigen ];
  propagatedBuildInputs = [ std-msgs orocos-kdl geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between:
      - Eigen and KDL
      - Eigen and geometry_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
