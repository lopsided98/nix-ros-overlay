
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, willow-maps }:
buildRosPackage {
  pname = "ros-melodic-pr2-app-manager";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_app_manager/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "efb64b17c3475ef039056ad31ceeebc17296ff0be259a5507b0b8e6fdcffb93b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ app-manager willow-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and tools for running the application manager on the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
