
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-create-pkg";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_create_pkg/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "c8af52d226d50829530ab30c2b5aac85dbce024b9e0fee5e5e557b5e9316ae05";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-lint-common ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A command line tool to create a boiler-plate package'';
    license = with lib.licenses; [ asl20 ];
  };
}
