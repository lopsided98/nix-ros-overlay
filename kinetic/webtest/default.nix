
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin-pip, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-webtest";
  version = "2.0.18-r1";

  src = fetchurl {
    url = https://github.com/asmodehn/webtest-rosrelease/archive/release/kinetic/webtest/2.0.18-1.tar.gz;
    sha256 = "f57a43cc3fc7bf8ba69b138d475daed20f4d198e81f91ebf32e6d784226a5e0e";
  };

  buildInputs = [ pythonPackages.webob pythonPackages.six pythonPackages.waitress pythonPackages.beautifulsoup4 catkin-pip ];
  checkInputs = [ pythonPackages.nose pythonPackages.mock pythonPackages.PasteDeploy pythonPackages.pyquery ];
  propagatedBuildInputs = [ pythonPackages.beautifulsoup4 pythonPackages.webob pythonPackages.six pythonPackages.waitress ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps any WSGI application and makes it easy to send test requests to that application, without starting up an HTTP server. http://webtest.readthedocs.io/en/latest/'';
    #license = lib.licenses.BSD;
  };
}
