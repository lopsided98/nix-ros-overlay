
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, amcl, base-local-planner, navfn, catkin, move-base, dwa-local-planner, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-husky-navigation";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_navigation/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0c54e6dfb8a1cda2ed5e87a26793f0d30aa4a60b964bb7e8da8af5663026d0a9";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gmapping map-server amcl base-local-planner navfn move-base dwa-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
