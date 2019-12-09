
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flask-cors, webargs, click, pythonPackages, catkin, rosunit, pyros-interfaces-ros, tblib, flask-reverse-proxy, roslint, catkin-pip, pyros, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rostful";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/rostful-rosrelease/archive/release/kinetic/rostful/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "eb57619be5233c56a02c08509336b9d4eb44e0c4ae4605009c35bec228fcbffe";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.flask flask-cors rostest pythonPackages.pyyaml webargs roslint flask-reverse-proxy tblib pythonPackages.flask-restful pyros catkin-pip pythonPackages.catkin-pkg pythonPackages.tornado pyros-interfaces-ros rospy pythonPackages.simplejson click ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.flask flask-cors pythonPackages.pyyaml webargs click pythonPackages.flask-restful pyros-interfaces-ros tblib pyros pythonPackages.tornado rospy pythonPackages.simplejson flask-reverse-proxy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''REST API for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
