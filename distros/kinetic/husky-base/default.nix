
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, diff-drive-controller, geometry-msgs, hardware-interface, husky-control, husky-description, husky-msgs, roscpp, roslaunch, roslint, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-husky-base";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_base/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "684d0e28fc338f745f6fd26ac3413770b1fc978863fa9dc6c88b15e314b9a70c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ controller-manager diagnostic-aggregator diagnostic-msgs diagnostic-updater diff-drive-controller geometry-msgs hardware-interface husky-control husky-description husky-msgs roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
