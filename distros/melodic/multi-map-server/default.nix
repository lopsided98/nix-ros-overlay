
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, libyamlcpp, map-server, nav-msgs, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-multi-map-server";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/multi_map_server/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "48e09df586a52fb77cc5f1f9eae7e36d1087c5e2bb62a98006950e9cacc393c8";
  };

  buildType = "catkin";
  buildInputs = [ catkin jsk-tools pythonPackages.pillow pythonPackages.pyyaml rosmake ];
  propagatedBuildInputs = [ SDL_image libyamlcpp map-server nav-msgs rosconsole roscpp rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multi_map_server provides the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
