
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, diff-drive-controller, geometry-msgs, hardware-interface, husky-control, husky-description, husky-msgs, roscpp, roslaunch, roslint, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-husky-base";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_base/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "e1eb0bf695fc8998633a74e0a4d8294dbb927fee1e40aff42eb4b859d6bbe0ce";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch roslint ];
  propagatedBuildInputs = [ controller-manager diagnostic-aggregator diagnostic-msgs diagnostic-updater diff-drive-controller geometry-msgs hardware-interface husky-control husky-description husky-msgs roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
