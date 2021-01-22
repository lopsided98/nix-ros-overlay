
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, python-qt-binding, python3Packages, roslint, rospy, rostest, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-reconfigure";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_reconfigure-release/archive/release/noetic/rqt_reconfigure/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "53f478c46f7b0948ec5e1a5d55b441584016e31e51e76d8c2dc69132aa143c60";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure python-qt-binding python3Packages.pyyaml rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This rqt plugin succeeds former dynamic_reconfigure's GUI
    (reconfigure_gui), and provides the way to view and edit the parameters
    that are accessible via dynamic_reconfigure.<br/>
    <br/>
    (12/27/2012) In the future, arbitrary parameters that are not associated
    with any nodes (which are not handled by dynamic_reconfigure) might
    become handled.
    However, currently as the name indicates, this pkg solely is dependent
    on dynamic_reconfigure that allows access to only those params latched
    to nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
